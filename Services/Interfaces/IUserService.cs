﻿using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Services.Interfaces
{
    public interface IUserService
    {
        IEnumerable<User> GetUsers(string username, string type);
        User GetUser(long id);
        User GetUser(string username);
        bool IsUserExist(string username);
        bool IsUserExist(string username, string password);

        User AddUser(User user);

        User UpdateUser(string username, User user);

        bool DeleteUser(string username);
    }
}
