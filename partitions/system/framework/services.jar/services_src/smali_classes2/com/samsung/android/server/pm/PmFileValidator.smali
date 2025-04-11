.class public abstract Lcom/samsung/android/server/pm/PmFileValidator;
.super Ljava/lang/Object;
.source "PmFileValidator.java"


# direct methods
.method public static validateRoleFile([I)V
    .locals 10

    .line 15
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    :try_start_0
    const-string v4, "com.android.role.persistence.RolesPersistenceImpl"

    .line 18
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-string/jumbo v7, "readForUser"

    new-array v8, v6, [Ljava/lang/Class;

    .line 22
    const-class v9, Landroid/os/UserHandle;

    aput-object v9, v8, v1

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "!@Failed to use RolesPersistence class."

    .line 31
    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string v4, "!@Failed to read roles.xml. Initiate the files."

    .line 26
    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    const-string/jumbo v4, "runtime-permissions.xml"

    .line 28
    invoke-static {v3, v4}, Lcom/samsung/android/server/pm/PmServerUtils;->deletePermissionApexFile(ILjava/lang/String;)V

    const-string/jumbo v4, "roles.xml"

    .line 29
    invoke-static {v3, v4}, Lcom/samsung/android/server/pm/PmServerUtils;->deletePermissionApexFile(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
