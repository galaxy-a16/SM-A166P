.class public Lcom/android/server/pm/UserManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "UserManagerServiceShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mService:Lcom/android/server/pm/UserManagerService;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;


# direct methods
.method public static synthetic $r8$lambda$dUQEqUh7JN9FbS4WkI_JvBecK5A()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/pm/UserManagerServiceShellCommand;->lambda$runSetSystemUserModeEmulation$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    .line 71
    iput-object p2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 72
    iput-object p3, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 73
    iput-object p4, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$runSetSystemUserModeEmulation$0()V
    .locals 3

    .line 363
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string v1, "To switch headless / full system user mode"

    const/4 v2, 0x0

    .line 362
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final canSwitchToHeadlessSystemUser()I
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 542
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->canSwitchToHeadlessSystemUser()Z

    move-result p0

    .line 543
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final confirmBuildIsDebuggable()Z
    .locals 1

    .line 569
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 572
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command not available on user builds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final confirmIsCalledByRoot()Z
    .locals 1

    .line 582
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 585
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command only available on root user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserManagerForUser(I)Landroid/os/UserManager;
    .locals 1

    .line 558
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 559
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 560
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public final isMainUserPermanentAdmin()I
    .locals 1

    .line 548
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 549
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p0

    .line 550
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 132
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    .line 136
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "is-user-visible"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "set-system-user-mode-emulation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "get-main-user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "report-system-user-package-whitelist-problems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "is-visible-background-users-on-default-display-supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "is-main-user-permanent-admin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_6
    const-string v1, "can-switch-to-headless-system-user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "is-headless-system-user-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "is-visible-background-users-supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 158
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->isMainUserPermanentAdmin()I

    move-result p0

    return p0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->canSwitchToHeadlessSystemUser()I

    move-result p0

    return p0

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runGetMainUserId()I

    move-result p0

    return p0

    .line 150
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsUserVisible()I

    move-result p0

    return p0

    .line 148
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsVisibleBackgroundUserOnDefaultDisplaySupported()I

    move-result p0

    return p0

    .line 146
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsVisibleBackgroundUserSupported()I

    move-result p0

    return p0

    .line 144
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsHeadlessSystemUserMode()I

    move-result p0

    return p0

    .line 142
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runSetSystemUserModeEmulation()I

    move-result p0

    return p0

    .line 140
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runReportPackageAllowlistProblems()I

    move-result p0

    return p0

    .line 138
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runList()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return p0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x653759b8 -> :sswitch_9
        -0x3fcd2c8 -> :sswitch_8
        0x32b09e -> :sswitch_7
        0x144d7a6b -> :sswitch_6
        0x28a0f01f -> :sswitch_5
        0x3a76b28f -> :sswitch_4
        0x40afebbe -> :sswitch_3
        0x56a171a8 -> :sswitch_2
        0x5faf535b -> :sswitch_1
        0x6b6f1033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "User manager (user) commands:"

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints this help text."

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  list [-v | --verbose] [--all]"

    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints all users on the system."

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reports all issues on user-type package allowlist XML files. Options:"

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -v | --verbose: shows extra info, like number of issues"

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --critical-only: show only critical issues, excluding warnings"

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --mode MODE: shows what errors would be if device used mode MODE"

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      (where MODE is the allowlist mode integer as defined by config_userTypePackageWhitelistMode)"

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  set-system-user-mode-emulation [--reboot | --no-restart] <headless | full | default>"

    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Changes whether the system user is headless, full, or default (as defined by OEM)."

    .line 97
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    WARNING: this command is meant just for development and debugging purposes."

    .line 99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "             It should NEVER be used on automated tests."

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    NOTE: by default it restarts the Android runtime, unless called with"

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          --reboot (which does a full reboot) or"

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          --no-restart (which requires a manual restart)"

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  is-headless-system-user-mode [-v | --verbose]"

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Checks whether the device uses headless system user mode."

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-visible-background-users-on-default-display-supported [-v | --verbose]"

    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Checks whether the device allows users to be start visible on background in the default display."

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    It returns the effective mode, even when using emulation"

    .line 111
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    (to get the real mode as well, use -v or --verbose)"

    .line 112
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  is-visible-background-users-supported [-v | --verbose]"

    .line 114
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Checks whether the device allows users to be start visible on background."

    .line 115
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  is-user-visible [--display DISPLAY_ID] <USER_ID>"

    .line 119
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Checks if the given user is visible in the given display."

    .line 120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If the display option is not set, it uses the user\'s context to check"

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    (so it emulates what apps would get from UserManager.isUserVisible())"

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  get-main-user "

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Displays main user id or message if there is no main user"

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runGetMainUserId()I
    .locals 2

    .line 530
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 531
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserId()I

    move-result p0

    const/16 v1, -0x2710

    if-ne p0, v1, :cond_0

    const-string p0, "None"

    .line 533
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 536
    :cond_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsHeadlessSystemUserMode()I
    .locals 4

    .line 444
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 448
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "-v"

    .line 449
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 459
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p0

    if-nez v2, :cond_2

    .line 463
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_1

    .line 465
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    .line 466
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "effective=%b real=%b\n"

    .line 465
    invoke-virtual {v0, v2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    return v1
.end method

.method public final runIsUserVisible()I
    .locals 5

    .line 407
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--display"

    .line 411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_4

    const/4 v4, -0x3

    if-eq v2, v4, :cond_4

    const/4 v4, -0x2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 428
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    :goto_1
    if-eqz v1, :cond_3

    .line 434
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->isUserVisibleOnDisplay(II)Z

    move-result p0

    goto :goto_2

    .line 436
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerServiceShellCommand;->getUserManagerForUser(I)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserVisible()Z

    move-result p0

    .line 439
    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0

    .line 425
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "invalid value (%d) for --user option\n"

    invoke-virtual {v0, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public final runIsVisibleBackgroundUserOnDefaultDisplaySupported()I
    .locals 4

    .line 501
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 505
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "-v"

    .line 506
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 517
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result p0

    if-nez v2, :cond_2

    .line 521
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_1

    .line 523
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101bd

    .line 524
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 523
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "effective=%b real=%b\n"

    invoke-virtual {v0, v2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    return v1
.end method

.method public final runIsVisibleBackgroundUserSupported()I
    .locals 4

    .line 472
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 476
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "-v"

    .line 477
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p0

    if-nez v2, :cond_2

    .line 492
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_1

    .line 494
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101bc

    .line 495
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 494
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "effective=%b real=%b\n"

    invoke-virtual {v0, v2, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_1
    return v1
.end method

.method public final runList()I
    .locals 21

    move-object/from16 v0, p0

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 171
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 172
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v6, v9

    goto :goto_2

    :sswitch_0
    const-string v8, "--verbose"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v6, "--all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    :sswitch_2
    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :pswitch_0
    move v3, v7

    goto :goto_0

    :pswitch_1
    move v4, v7

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    .line 186
    iget-object v8, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    xor-int/lit8 v9, v3, 0x1

    xor-int/2addr v3, v7

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "Error: couldn\'t get users"

    .line 189
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 192
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, -0x2710

    if-eqz v4, :cond_5

    .line 195
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%d users:\n\n"

    invoke-virtual {v1, v11, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 196
    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    goto :goto_3

    :cond_5
    const-string v10, "Users:"

    .line 201
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v9

    :goto_3
    move v11, v2

    :goto_4
    if-ge v11, v8, :cond_14

    .line 204
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 205
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v13, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v13

    const-string v14, ""

    if-eqz v4, :cond_12

    .line 207
    const-class v15, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 208
    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v15, :cond_8

    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 215
    :try_start_0
    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v6

    iget v7, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_6

    const-string v6, " (device-owner)"

    goto :goto_5

    :cond_6
    move-object v6, v14

    .line 218
    :goto_5
    invoke-virtual {v15, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v7, " (profile-owner)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_7
    move-object v7, v14

    .line 222
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    throw v0

    :cond_8
    move-object v6, v14

    move-object v7, v6

    .line 225
    :goto_7
    iget v15, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v15, v10, :cond_9

    const/16 v16, 0x1

    goto :goto_8

    :cond_9
    move/from16 v16, v2

    .line 226
    :goto_8
    iget v2, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v2, v15, :cond_a

    if-eq v2, v9, :cond_a

    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    .line 228
    :goto_9
    iget-object v9, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v9, v15}, Lcom/android/server/pm/UserManagerService;->isUserVisible(I)Z

    move-result v9

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    .line 230
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v17, 0x0

    aput-object v20, v15, v17

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v19, 0x1

    aput-object v0, v15, v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v18, 0x2

    aput-object v0, v15, v18

    iget-object v0, v12, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    move-object/from16 v20, v3

    const-string v3, "android.os.usertype."

    .line 233
    invoke-virtual {v0, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v15, v3

    iget v0, v12, Landroid/content/pm/UserInfo;->flags:I

    .line 234
    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v15, v3

    if-eqz v2, :cond_b

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (parentId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_b
    move-object v0, v14

    :goto_a
    const/4 v2, 0x5

    aput-object v0, v15, v2

    if-eqz v13, :cond_c

    const-string v0, " (running)"

    goto :goto_b

    :cond_c
    move-object v0, v14

    :goto_b
    const/4 v2, 0x6

    aput-object v0, v15, v2

    .line 237
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_d

    const-string v0, " (partial)"

    goto :goto_c

    :cond_d
    move-object v0, v14

    :goto_c
    const/4 v2, 0x7

    aput-object v0, v15, v2

    .line 238
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_e

    const-string v0, " (pre-created)"

    goto :goto_d

    :cond_e
    move-object v0, v14

    :goto_d
    const/16 v2, 0x8

    aput-object v0, v15, v2

    .line 239
    iget-boolean v0, v12, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v0, :cond_f

    const-string v0, " (converted)"

    goto :goto_e

    :cond_f
    move-object v0, v14

    :goto_e
    const/16 v2, 0x9

    aput-object v0, v15, v2

    const/16 v0, 0xa

    aput-object v6, v15, v0

    const/16 v0, 0xb

    aput-object v7, v15, v0

    if-eqz v16, :cond_10

    const-string v0, " (current)"

    goto :goto_f

    :cond_10
    move-object v0, v14

    :goto_f
    const/16 v2, 0xc

    aput-object v0, v15, v2

    if-eqz v9, :cond_11

    const-string v14, " (visible)"

    :cond_11
    const/16 v0, 0xd

    aput-object v14, v15, v0

    const-string v0, "%d: id=%d, name=%s, type=%s, flags=%s%s%s%s%s%s%s%s%s%s\n"

    .line 229
    invoke-virtual {v1, v0, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x2

    const/4 v3, 0x1

    goto :goto_10

    :cond_12
    move-object/from16 v20, v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    if-eqz v13, :cond_13

    const-string v14, " running"

    :cond_13
    const/4 v3, 0x1

    aput-object v14, v2, v3

    const-string v6, "\t%s%s\n"

    .line 248
    invoke-virtual {v1, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move v7, v3

    move-object/from16 v3, v20

    const/4 v2, 0x0

    const/16 v9, -0x2710

    goto/16 :goto_4

    :cond_14
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5e9 -> :sswitch_2
        0x2901001 -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final runReportPackageAllowlistProblems()I
    .locals 9

    .line 256
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    move v3, v1

    move v4, v3

    .line 261
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 262
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v6, v7

    goto :goto_2

    :sswitch_0
    const-string v6, "--verbose"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v6, "--mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_2
    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :sswitch_3
    const-string v6, "--critical-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :pswitch_1
    move v3, v8

    goto :goto_0

    :pswitch_2
    move v4, v8

    goto :goto_0

    .line 279
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runReportPackageAllowlistProblems(): verbose="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", criticalOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserManagerServiceShellCommand"

    .line 279
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, v0, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 284
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    return v1

    :catchall_0
    move-exception p0

    .line 283
    :try_start_1
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x513a2c86 -> :sswitch_3
        0x5e9 -> :sswitch_2
        0x4f776f43 -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final runSetSystemUserModeEmulation()I
    .locals 11

    .line 292
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->confirmBuildIsDebuggable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->confirmIsCalledByRoot()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 301
    iget-object v2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "Cannot change system user mode when it has a credential"

    .line 302
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x1

    move v5, v2

    move v4, v3

    .line 309
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "--no-restart"

    .line 310
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v4, "--reboot"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    .line 323
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "You can use --reboot or --no-restart, but not both"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 327
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v7

    .line 332
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "full"

    const-string v10, "headless"

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v8, v1

    goto :goto_2

    :sswitch_0
    const-string v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    move v8, v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    move v8, v3

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 343
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Invalid arg: %s\n"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v1

    :pswitch_0
    move p0, v2

    goto :goto_3

    :pswitch_1
    move p0, v7

    goto :goto_3

    :pswitch_2
    xor-int/lit8 p0, v7, 0x1

    :goto_3
    if-nez p0, :cond_a

    new-array p0, v2, [Ljava/lang/Object;

    if-eqz v7, :cond_9

    move-object v9, v10

    :cond_9
    aput-object v9, p0, v3

    const-string v1, "No change needed, system user is already %s\n"

    .line 348
    invoke-virtual {v0, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :cond_a
    const-string p0, "Updating system property %s to %s"

    const-string/jumbo v1, "persist.debug.user_mode_emulation"

    .line 353
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "UserManagerServiceShellCommand"

    invoke-static {v7, p0, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    const-string p0, "Rebooting to finalize the changes"

    .line 359
    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Rebooting to finalize changes"

    .line 360
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 362
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_d

    const-string p0, "Shutting PackageManager down"

    .line 367
    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    .line 370
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_c

    :try_start_0
    const-string v1, "Shutting ActivityManager down"

    .line 373
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    .line 374
    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to shut down ActivityManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    .line 381
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Restarting Android runtime(PID=%d) to finalize changes"

    invoke-static {v7, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Restarting Android runtime to finalize changes"

    .line 382
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "The restart may trigger a \'Broken pipe\' message; this is to be expected."

    .line 383
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 392
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_5

    :cond_d
    const-string p0, "System user mode changed - please reboot (or restart Android runtime) to continue"

    .line 394
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "NOTICE: after restart, some apps might be uninstalled (and their data will be lost)"

    .line 396
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    return v3

    :cond_e
    :goto_6
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x42768087 -> :sswitch_2
        0x30228f -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
