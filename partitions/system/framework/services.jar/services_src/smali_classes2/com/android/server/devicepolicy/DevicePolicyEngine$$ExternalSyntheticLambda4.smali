.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/PolicyDefinition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->$r8$lambda$HKtL3SbY3GfFVYM-Rba3Z_SFGAE(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/PolicyDefinition;)V

    return-void
.end method
