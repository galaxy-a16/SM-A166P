.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->$r8$lambda$HuE50OaXEb2Y4Lj8ijv-B77mMq0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;Landroid/content/Intent;)V

    return-void
.end method
