public class User {
    public int Id;
    public String UserName, UserPhoneNumber, UserEmail, CreatedDate, UserStreetAddress, UserCityName, UserZipCode;

    public User(int id, String userName, String userPhoneNumber, String userEmail, String createdDate, String userStreetAddress, String userCityName, String userZipCode) {
        Id = id;
        UserName = userName;
        UserPhoneNumber = userPhoneNumber;
        UserEmail = userEmail;
        CreatedDate = createdDate;
        UserStreetAddress = userStreetAddress;
        UserCityName = userCityName;
        UserZipCode = userZipCode;
    }

    public String toString() {
        return "User{" +
                "Id='" + Id + '\'' +
                ", UserName='" + UserName + '\'' +
                ", UserPhoneNumber='" + UserPhoneNumber + '\'' +
                ", UserEmail='" + UserEmail + '\'' +
                ", CreatedDate='" + CreatedDate + '\'' +
                ", UserStreetAddress='" + UserStreetAddress + '\'' +
                ", UserCityName='" + UserCityName + '\'' +
                ", UserZipCode='" + UserZipCode + '\'' +
                '}';
    }
}
