package org.inlighting.oj.web.controller.format.user;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;

/**
 * @author Smith
 **/
public class EnterContestFormat {

    @Length(max = 6)
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
