.class public interface abstract Lcom/android/server/pm/permission/PermissionManagerService$CheckPermissionDelegate;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# virtual methods
.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I
.end method

.method public abstract checkUidPermission(ILjava/lang/String;Ljava/util/function/BiFunction;)I
.end method

.method public abstract getDelegatedPermissionNames()Ljava/util/List;
.end method

.method public abstract getDelegatedUid()I
.end method
