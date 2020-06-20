/* Yet Another Forum.NET
 * Copyright (C) 2003-2005 Bjørnar Henden
 * Copyright (C) 2006-2013 Jaben Cargman
 * Copyright (C) 2014-2020 Ingo Herbote
 * https://www.yetanotherforum.net/
 * 
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at

 * https://www.apache.org/licenses/LICENSE-2.0

 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

namespace YAF.Core.BasePages
{
    /// <summary>
    /// Profile Page Registered Class
    /// </summary>
    public class ProfilePage : ForumPageRegistered
  {
        /// <summary>
        /// Initializes a new instance of the <see cref="ProfilePage"/> class. 
        /// Creates the Administration page.
        /// </summary>
        public ProfilePage()
      : this(null)
    {
    }

        /// <summary>
        /// Initializes a new instance of the <see cref="ProfilePage"/> class.
        /// </summary>
        /// <param name="transPage">
        /// The trans page.
        /// </param>
        public ProfilePage(string transPage)
      : base(transPage)
    {
      this.IsRegisteredPage = true;
    }

        #region Properties

        /// <summary>
        /// Gets the Page Name.
        /// </summary>
        public override string PageName => $"Profile_{base.PageName}";

        #endregion
    }
}