.class public abstract Lcom/android/server/desktopmode/DesktopModeSettings;
.super Ljava/lang/Object;
.source "DesktopModeSettings.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

.field public static final TAG:Ljava/lang/String;

.field public static sCurrentUserId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    const-string v1, "dock_usbpd_ids"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dock_version"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 110
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, -0x2710

    .line 130
    sput v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    return-void
.end method

.method public static applyGlobalSettings(Landroid/content/ContentResolver;I)V
    .locals 4

    .line 141
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 142
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-static {p0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static clearSettingsAsUser(Landroid/content/ContentResolver;I)V
    .locals 2

    .line 374
    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "clearSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 376
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v0, "Failed to clear Dex settings"

    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static contains(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static deleteAllSettingsAsUserOrThrowException(Landroid/content/ContentResolver;I)V
    .locals 2

    .line 349
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "deleteSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static deleteAllSettingsOrThrowException(Landroid/content/ContentResolver;)V
    .locals 1

    .line 361
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsAsUserOrThrowException(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public static deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    .line 345
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    .line 334
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 336
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p2, "Failed to delete settings"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static deleteSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2

    .line 327
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 328
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "deleteSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static deleteSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    .line 341
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static dump(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .locals 4

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System user (0) settings"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 403
    invoke-static {p1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpApp(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .locals 2

    const-string v0, "dumpApp"

    .line 386
    :try_start_0
    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 391
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p2, "Failed to dump"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 1

    .line 172
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "getSettings"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 165
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get settings"

    invoke-static {p1, v1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .line 220
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    .line 216
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 0

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 177
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 179
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p3, "Failed to get settings"

    invoke-static {p1, p3, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 0

    .line 196
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 186
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 187
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "getSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 232
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUriAsUser(I)Landroid/net/Uri;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.sec.android.desktopmode.uiservice.SettingsProvider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/settings"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isGlobalKey(Ljava/lang/String;)Z
    .locals 1

    .line 137
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setCurrentUserId(I)V
    .locals 0

    .line 133
    sput p0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 283
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1

    .line 287
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 0

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 260
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set settings"

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V
    .locals 0

    .line 267
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 252
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 253
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "val"

    .line 254
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo p2, "setSettings"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1

    .line 311
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 303
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
