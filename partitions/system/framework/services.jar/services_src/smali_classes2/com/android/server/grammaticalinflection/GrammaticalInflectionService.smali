.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;
.super Lcom/android/server/SystemService;
.source "GrammaticalInflectionService.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBackupHelper(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string v0, "GrammaticalInflection"

    .line 42
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$1;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mService:Landroid/os/IBinder;

    .line 61
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 62
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 63
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    return-void
.end method


# virtual methods
.method public getApplicationGrammaticalGender(Ljava/lang/String;I)I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mGrammaticalGender:Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 2

    const-string v0, "grammatical_inflection"

    .line 69
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl-IA;)V

    const-class p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .locals 7

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getApplicationGrammaticalGender(Ljava/lang/String;I)I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 120
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v1

    const-string v2, "i18n.grammatical_Inflection.enabled"

    const/4 v3, 0x1

    .line 123
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "GrammaticalInflection"

    const-string p1, "Clearing the user\'s grammatical gender setting"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setGrammaticalGender(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {p0, p1, v5, v6, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-eqz p3, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    const/16 p2, 0x248

    const/4 v0, 0x2

    .line 132
    invoke-static {p2, v0, p0, p1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZ)V

    .line 138
    invoke-interface {v1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setGrammaticalGender(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    return-void
.end method
