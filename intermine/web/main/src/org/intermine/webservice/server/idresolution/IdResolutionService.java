package org.intermine.webservice.server.idresolution;

/*
 * Copyright (C) 2002-2014 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.intermine.api.InterMineAPI;
import org.intermine.api.bag.BagQueryRunner;
import org.intermine.api.idresolution.IDResolver;
import org.intermine.api.idresolution.Job;
import org.intermine.api.idresolution.JobInput;
import org.intermine.webservice.server.core.JSONService;
import org.intermine.webservice.server.exceptions.BadRequestException;
import org.intermine.webservice.server.exceptions.InternalErrorException;
import org.intermine.webservice.server.output.JSONFormatter;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class IdResolutionService extends JSONService
{
    /**
     * Default constructor.
     * @param im
     */
    public IdResolutionService(InterMineAPI im) {
        super(im);
    }

    @Override
    protected void execute() throws Exception {
        final WebserviceJobInput in;
        try {
            in = new WebserviceJobInput();
        } catch (JSONException e) {
            throw new BadRequestException("Invalid JSON object", e);
        } catch (IOException e) {
            throw new InternalErrorException("Could not read details", e);
        }

        final BagQueryRunner runner = im.getBagQueryRunner();

        Job job = IDResolver.getInstance().submit(runner, in);

        addResultValue(job.getUid(), false);
    }

    @Override
    protected String getResultsKey() {
        return "uid";
    }

    public class WebserviceJobInput implements JobInput
    {
        private final List<String> ids;
        private final String extraValue;
        private final String type;
        private final Boolean caseSensitive;
        private final Boolean wildCards;

        WebserviceJobInput() throws JSONException, IOException {
            JSONObject requestDetails
                = new JSONObject(new JSONTokener(request.getReader()));
            JSONArray identifiers = requestDetails.getJSONArray("identifiers");
            ids = new LinkedList<String>();
            for (int i = 0; i < identifiers.length(); i++) {
                ids.add(identifiers.getString(i));
            }
            type = requestDetails.getString("type");
            caseSensitive = requestDetails.optBoolean("caseSensitive", false);
            wildCards = requestDetails.optBoolean("wildCards", false);
            extraValue = requestDetails.optString("extra", null);
        }

        public List<String> getIds() {
            return ids;
        }

        public String getExtraValue() {
            return extraValue;
        }

        public String getType() {
            return type;
        }

        public Boolean getCaseSensitive() {
            return caseSensitive;
        }

        public Boolean getWildCards() {
            return wildCards;
        }

        /* (non-Javadoc)
         * @see java.lang.Object#hashCode()
         */
        @Override
        public int hashCode() {
            return HashCodeBuilder.reflectionHashCode(this);
        }

        /* (non-Javadoc)
         * @see java.lang.Object#equals(java.lang.Object)
         */
        @Override
        public boolean equals(Object obj) {
            return EqualsBuilder.reflectionEquals(this, obj);
        }
    }


}
