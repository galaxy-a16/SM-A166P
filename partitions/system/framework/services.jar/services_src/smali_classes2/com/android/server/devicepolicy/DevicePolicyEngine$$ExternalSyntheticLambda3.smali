.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->$r8$lambda$N44rD4byhxMumZp1WBq_2zw5uwQ(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
