.class public Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mM1:Ljava/lang/String;
    .annotation runtime Lr5/b;
        value = "m1"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;->mM1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getM1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;->mM1:Ljava/lang/String;

    return-object p0
.end method
