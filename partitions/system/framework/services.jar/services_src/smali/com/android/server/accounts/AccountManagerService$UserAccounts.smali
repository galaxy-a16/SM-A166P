.class public Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# instance fields
.field public final accountCache:Ljava/util/HashMap;

.field public final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field public final accountsDb:Lcom/android/server/accounts/AccountsDb;

.field public final authTokenCache:Ljava/util/Map;

.field public final cacheLock:Ljava/lang/Object;

.field public final credentialsPermissionNotificationIds:Ljava/util/HashMap;

.field public final dbLock:Ljava/lang/Object;

.field public final mReceiversForType:Ljava/util/Map;

.field public final previousNameCache:Ljava/util/HashMap;

.field public final signinRequiredNotificationIds:Ljava/util/HashMap;

.field public final userDataCache:Ljava/util/Map;

.field public final userId:I

.field public final visibilityCache:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .locals 3

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 270
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 271
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 273
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 275
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 277
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 279
    new-instance v2, Lcom/android/server/accounts/TokenCache;

    invoke-direct {v2}, Lcom/android/server/accounts/TokenCache;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 281
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 287
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 301
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 305
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 306
    monitor-enter v1

    .line 307
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 309
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 309
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 310
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
