package org.intermine.webservice.server.exceptions;

/*
 * Copyright (C) 2002-2014 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import org.intermine.webservice.server.output.Output;

/**
 * The BadRequestException is thrown by service when there is a problem with the request.
 *
 * @author Jakub Kulaviak
 */
public class BadRequestException extends ServiceException
{

    private static final long serialVersionUID = 1L;

    /**
     * 400 - BAD REQUEST
     *
     * @param message message
     */
    public BadRequestException(String message) {
        super(message);
        initErrorCode();
    }

    /**
     * 404 - BAD REQUEST
     *
     * @param message message
     * @param cause cause
     */
    public BadRequestException(String message, Throwable cause) {
        super(message, cause);
        initErrorCode();
    }

    /**
     * 404 - BAD REQUEST
     *
     * @param cause cause
     */
    public BadRequestException(Throwable cause) {
        super(cause);
        initErrorCode();
    }

    private void initErrorCode() {
        setHttpErrorCode(Output.SC_BAD_REQUEST);
    }
}
