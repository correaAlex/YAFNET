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
namespace YAF.Core.Services
{
  using System.Diagnostics;

  using YAF.Types.Interfaces;

  /// <summary>
  /// The stop watch.
  /// </summary>
  public class StopWatch : IStopWatch
  {
      /// <summary>
    /// Gets Watch.
    /// </summary>
    public Stopwatch Watch { get; } = new Stopwatch();

    /// <summary>
    /// Gets Duration.
    /// </summary>
    public double Duration
    {
      get
      {
          var duration = this.Watch.ElapsedMilliseconds / 1000.0;
        return duration;
      }
    }

    /// <summary>
    /// The start.
    /// </summary>
    public void Start()
    {
      this.Watch.Start();
    }

    /// <summary>
    /// The stop.
    /// </summary>
    public void Stop()
    {
      this.Watch.Stop();
    }

    /// <summary>
    /// The reset.
    /// </summary>
    public void Reset()
    {
      this.Watch.Reset();
    }
  }
}