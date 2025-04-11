.class public Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final mAm:Landroid/app/ActivityManager;

.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$0vRl6-lSkH0V5UPuU56Xz5meChg(Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->lambda$stopListening$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qQkLm_Xm6Ap4rkaW-SbXf0Jiqu8(Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->lambda$startListening$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/app/ActivityManager;)V
    .locals 0

    .line 1586
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1587
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method private synthetic lambda$startListening$0()V
    .locals 2

    .line 1592
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->mAm:Landroid/app/ActivityManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    return-void
.end method

.method private synthetic lambda$stopListening$1()V
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 4

    const/16 v0, 0xc8

    if-gt p2, v0, :cond_0

    return-void

    .line 1611
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mgetPackageNameByUid(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1617
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1622
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mgetPendingRoleHolderRemovalAssociationsForUser(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 1623
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1625
    :cond_2
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v3, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mmaybeRemoveRoleHolderForAssociation(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1630
    :cond_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mremoveFromPendingRoleHolderRemoval(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 1635
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmUserPersistenceHandler(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->postPersistUserState(I)V

    :cond_5
    return-void
.end method

.method public startListening()V
    .locals 1

    .line 1591
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 1598
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$OnPackageVisibilityChangeListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
