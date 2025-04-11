.class public Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "PeopleService.java"


# instance fields
.field mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

.field public mDataManager:Lcom/android/server/people/data/DataManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService;->handleIncomingUser(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/people/PeopleService;->enforceSystemOrRoot(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisSystemOrRoot()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v0, Lcom/android/server/people/PeopleService$1;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$1;-><init>(Lcom/android/server/people/PeopleService;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    .line 84
    new-instance v0, Lcom/android/server/people/data/DataManager;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 85
    new-instance p1, Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-direct {p1}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 86
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V

    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 3

    .line 133
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSystemOrRoot()Z
    .locals 2

    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 140
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 4

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 155
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 157
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query eventsfor package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 98
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->dump([Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "android.permission.STATUS_BAR_SERVICE"

    .line 173
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleIncomingUser(I)I
    .locals 8

    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    move v3, p1

    .line 145
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0}, Lcom/android/server/people/data/DataManager;->initialize()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/server/people/PeopleService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p1, "people"

    .line 110
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 112
    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 113
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->onUserStopping(I)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->onUserUnlocked(I)V

    return-void
.end method
