.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;->f$0:I

    check-cast p1, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->$r8$lambda$6UA_Gpou-Qd1gIZNR3hHrECCAcQ(ILcom/samsung/android/telecom/SemTelecomManager;)V

    return-void
.end method
