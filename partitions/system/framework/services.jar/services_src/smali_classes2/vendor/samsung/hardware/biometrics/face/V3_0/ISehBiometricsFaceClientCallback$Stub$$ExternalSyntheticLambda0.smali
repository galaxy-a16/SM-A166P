.class public final synthetic Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/os/HwParcel;

    invoke-static {p1}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Stub;->$r8$lambda$1NAahFBWPFmWodDW4QqU8PJDeDE(Landroid/os/HwParcel;)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method
