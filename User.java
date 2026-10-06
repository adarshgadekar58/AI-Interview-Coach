package Model;

public class User {

    private String userId;

    private String name;

    private String email;

    private String password;

    private String college;

    private String skills;

    public User() {

    }

    public User(String userId, String name, String email, String password, String college, String skills) {

        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.college = college;
        this.skills = skills;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String id) {
        this.userId = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

}