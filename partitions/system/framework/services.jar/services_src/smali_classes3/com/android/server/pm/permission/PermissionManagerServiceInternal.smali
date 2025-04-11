.class public interface abstract Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"

# interfaces
.implements Landroid/permission/PermissionManagerInternal;
.implements Lcom/android/server/pm/permission/LegacyPermissionDataProvider;


# virtual methods
.method public abstract addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
.end method

.method public abstract applyRuntimePermissionsForAllApplicationsForMDM(II)Z
.end method

.method public abstract applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract checkPostNotificationsPermissionGrantedOrLegacyAccess(I)I
.end method

.method public abstract checkUidPermission(ILjava/lang/String;)I
.end method

.method public abstract getAllPermissionsWithProtection(I)Ljava/util/List;
.end method

.method public abstract getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
.end method

.method public abstract getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getDelegatedShellPermissions()Ljava/util/List;
.end method

.method public abstract getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
.end method

.method public abstract getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
.end method

.method public abstract getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
.end method

.method public abstract getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getPermissionGids(Ljava/lang/String;I)[I
.end method

.method public abstract getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
.end method

.method public abstract getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
.end method

.method public abstract onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
.end method

.method public abstract onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
.end method

.method public abstract onStorageVolumeMounted(Ljava/lang/String;Z)V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract onUserCreated(I)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract readLegacyPermissionStateTEMP()V
.end method

.method public abstract readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
.end method

.method public abstract removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
.end method

.method public abstract resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V
.end method

.method public abstract resetRuntimePermissionsForUser(I)V
.end method

.method public abstract revokeInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V
.end method

.method public abstract setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
.end method

.method public abstract startShellPermissionIdentityDelegation(ILjava/lang/String;Ljava/util/List;)V
.end method

.method public abstract stopShellPermissionIdentityDelegation()V
.end method

.method public abstract writeLegacyPermissionStateTEMP()V
.end method

.method public abstract writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
.end method
