.class public Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
.super Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;
.source "MultiUserManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    iget-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public allowMultipleUsers(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 5

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 138
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "MULTI_USER_MGMT"

    const-string/jumbo v3, "multiUserAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    if-nez p0, :cond_3

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 151
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3, v1, v1}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    if-nez p2, :cond_2

    .line 155
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 157
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 158
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiUserManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string v3, "com.android.settings"

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->removeTask(I)Z

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return v0
.end method

.method public allowUserCreation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 285
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "MULTI_USER_MGMT"

    const-string/jumbo v1, "multiUserCreationAllowed"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public allowUserRemoval(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 322
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "MULTI_USER_MGMT"

    const-string/jumbo v1, "multiUserRemovalAllowed"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public createUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    iget-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz p1, :cond_3

    .line 204
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserCount()I

    move-result p1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    if-lt p1, v2, :cond_0

    return v3

    :cond_0
    if-eqz p2, :cond_1

    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 211
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x4

    invoke-virtual {p2, p1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 213
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x1040823

    .line 218
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_2
    move v3, p2

    .line 224
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4
    return v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 357
    iget-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Permission Denial: can\'t dump Multi User Service"

    .line 359
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object p3, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo p3, "multiUserRemovalAllowed"

    const-string/jumbo v0, "multiUserAllowed"

    .line 363
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "MULTI_USER_MGMT"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 366
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isUserRemovalAllowed = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    multipleUsersAllowed = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in Multi User Service Dump"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiUserManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getUsers(Lcom/samsung/android/knox/ContextInfo;)[I
    .locals 5

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 263
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz p0, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 265
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 266
    new-array v1, p1, [I

    :goto_0
    if-ge v0, p1, :cond_0

    .line 268
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 272
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    return-object v2
.end method

.method public isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    .line 297
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MULTI_USER_MGMT"

    const-string/jumbo v0, "multiUserCreationAllowed"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 300
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p2, :cond_0

    if-nez p0, :cond_0

    const p1, 0x1040822

    .line 308
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isUserCreationAllowed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiUserManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    .line 334
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MULTI_USER_MGMT"

    const-string/jumbo v0, "multiUserRemovalAllowed"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 337
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p2, :cond_0

    if-nez p0, :cond_0

    const p1, 0x1040824

    .line 345
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 348
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isUserRemovalAllowed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiUserManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 1

    .line 120
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MULTI_USER_MGMT"

    const-string/jumbo v0, "multiUserAllowed"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 126
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p2, :cond_1

    if-nez p0, :cond_1

    const p1, 0x1040821

    .line 128
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_1
    return p0
.end method

.method public multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 111
    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "MultiUserManagerService"

    .line 113
    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public removeUser(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceOwnerOnlyAndMultiUserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-lez p2, :cond_1

    .line 241
    iget-object v3, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_1

    .line 244
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    iget-object p0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v0

    .line 249
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method
