.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/EnforcingAdmin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;Lcom/android/server/devicepolicy/CallerIdentity;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$2:Lcom/android/server/devicepolicy/CallerIdentity;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$3:Lcom/android/server/devicepolicy/EnforcingAdmin;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$2:Lcom/android/server/devicepolicy/CallerIdentity;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda78;->f$3:Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$6gro419PUXgYg36PbkSViD9Ki9g(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;Lcom/android/server/devicepolicy/CallerIdentity;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    return-void
.end method
