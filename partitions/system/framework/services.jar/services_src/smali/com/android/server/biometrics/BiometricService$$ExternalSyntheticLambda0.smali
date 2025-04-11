.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/BiometricService;->$r8$lambda$lSb-6SkyQj9bDTccanp4QuqSpJM(Lcom/android/server/biometrics/BiometricService;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
