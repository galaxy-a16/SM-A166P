.class public Lcom/android/server/desktopmode/Shell;
.super Landroid/os/ShellCommand;
.source "Shell.java"


# instance fields
.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public mResolver:Landroid/content/ContentResolver;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object p2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 22
    iput-object p3, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 23
    iput-object p4, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    return-void
.end method


# virtual methods
.method public final desktopModeSettingsCommand()I
    .locals 7

    .line 181
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 187
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v0, v1

    goto :goto_1

    :sswitch_0
    const-string v5, "clear"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "put"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v5, "delete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v6

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 233
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    goto :goto_2

    :pswitch_0
    if-eqz v3, :cond_7

    .line 214
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 217
    :cond_7
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsOrThrowException(Landroid/content/ContentResolver;)V

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_8

    .line 221
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    .line 225
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "System user (0) settings:"

    .line 227
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    goto :goto_2

    .line 203
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    if-eqz v4, :cond_9

    .line 197
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 200
    :cond_9
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "null"

    invoke-static {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    if-eqz v4, :cond_a

    .line 207
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    .line 210
    :cond_a
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_b
    :goto_2
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1b30f -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5a5b64d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final desktopModeSettingsPrintUsage()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USAGE: settings get KEY"

    .line 253
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings put KEY VALUE"

    .line 254
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings delete KEY"

    .line 255
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings clear"

    .line 256
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       settings list"

    .line 257
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableNewDex()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_new_dex_home"

    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final multiResolutionManagerCommand()I
    .locals 7

    const/4 v0, -0x1

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCustomDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto/16 :goto_4

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2497c4ae

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x1bc62

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "supportAll"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_a

    if-eq v2, v6, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0xddf

    if-eq v2, v4, :cond_6

    const v4, 0x1ad6f

    if-eq v2, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v6

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v0

    :goto_3
    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_8

    .line 163
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    .line 160
    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    goto :goto_4

    .line 157
    :cond_9
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1, v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    goto :goto_4

    .line 144
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 146
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 147
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 148
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    .line 151
    :cond_b
    iget-object v6, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v6, v1, v2, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCustomResolutionFromAdbCommand(Ljava/io/PrintWriter;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v3

    .line 173
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0
.end method

.method public final multiResolutionManagerPrintUsage()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USAGE: resolution"

    .line 263
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       resolution set WIDTH HEIGHT DENSITY"

    .line 264
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       resolution supportAll [on|off]"

    .line 265
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "ui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "toggle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "newdex"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "resolution"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsCommand()I

    move-result p0

    goto :goto_1

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerCommand()I

    move-result p0

    goto :goto_1

    .line 37
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 49
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->enableNewDex()I

    move-result p0

    goto :goto_1

    .line 43
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerCommand()I

    move-result p0

    .line 55
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x5f5e8754 -> :sswitch_6
        -0x3e840989 -> :sswitch_5
        -0x33c144ac -> :sswitch_4
        0xddf -> :sswitch_3
        0xe94 -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 270
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "DesktopModeService commands:"

    .line 271
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 272
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 273
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 274
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  on"

    .line 275
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable desktop mode."

    .line 276
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  off"

    .line 278
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Disable desktop mode."

    .line 279
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  toggle"

    .line 281
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Toggle desktop mode."

    .line 282
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  settings"

    .line 284
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode settings."

    .line 285
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  resolution"

    .line 287
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode resolution."

    .line 288
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ui"

    .line 290
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Manage desktop mode UI elements."

    .line 291
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final uiManagerCommand()I
    .locals 6

    const/4 v0, -0x1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 81
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "showDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v4, "dismissDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "showOverlay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "showNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v4, "finishActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "removeNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "startActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v4, "dismissOverlay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    goto/16 :goto_2

    :pswitch_0
    if-eqz v3, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    goto :goto_2

    .line 106
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    goto :goto_2

    .line 102
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 102
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_2

    .line 98
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 98
    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->showOverlay(II)V

    goto :goto_2

    :pswitch_5
    if-eqz v3, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    .line 95
    :cond_5
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_2

    .line 87
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    goto :goto_2

    .line 83
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 83
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v5

    .line 128
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e40e59a -> :sswitch_7
        -0x5b20666f -> :sswitch_6
        -0x3f93d071 -> :sswitch_5
        -0x33d05f3e -> :sswitch_4
        -0x2efddb78 -> :sswitch_3
        -0x29e8e56d -> :sswitch_2
        -0xf4ef38e -> :sswitch_1
        0x1471d2a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final uiManagerPrintUsage()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USAGE: ui showDialog DISPLAYID TYPE"

    .line 241
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui showNotification TYPE"

    .line 242
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui showOverlay WHERE TYPE"

    .line 243
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui startActivity DISPLAYID TYPE"

    .line 244
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui dismissDialog TYPE"

    .line 245
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui dismissOverlay WHERE TYPE"

    .line 246
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui removeNotification TYPE"

    .line 247
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "       ui finishActivity TYPE"

    .line 248
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
