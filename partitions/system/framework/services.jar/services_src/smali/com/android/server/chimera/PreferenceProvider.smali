.class public Lcom/android/server/chimera/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "PreferenceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string p2, "ChimeraManagerService"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraManager()Lcom/android/server/chimera/ChimeraManager;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraManager;->getSettingRepository()Lcom/android/server/chimera/SettingRepository;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraManager;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeDefault()Z

    move-result p4

    const-string p5, "Default,Conservative"

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ",Aggressive"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_0
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Conservative"

    goto :goto_0

    :cond_1
    const-string p3, "Aggressive"

    goto :goto_0

    :cond_2
    const-string p3, "Default"

    goto :goto_0

    :cond_3
    const-string p2, ""

    move-object p3, p2

    move-object p5, p3

    :goto_0
    new-instance p4, Landroid/database/MatrixCursor;

    const-string v0, "VERSION"

    const-string v1, "SUPPORTED_MODE"

    const-string v2, "CURRENT_MODE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v3, v1, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v3, v2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p4, p0, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const-string p0, "ChimeraManagerService"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraManagerService;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraManager()Lcom/android/server/chimera/ChimeraManager;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->getSettingRepository()Lcom/android/server/chimera/SettingRepository;

    move-result-object p3

    const-string p4, "MODE"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "Aggressive"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    const-string v1, "PreferenceProvider"

    if-eqz p4, :cond_1

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    :cond_0
    const-string p2, "custom mode = true, false"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v0, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto :goto_0

    :cond_1
    const-string p4, "Conservative"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result p2

    if-eqz p2, :cond_2

    return p1

    :cond_2
    const-string p2, "custom mode = true, true"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v0, v0}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p2

    if-nez p2, :cond_4

    return p1

    :cond_4
    const-string p2, "custom mode = false, false"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, p1, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    :cond_5
    :goto_0
    return p1
.end method
