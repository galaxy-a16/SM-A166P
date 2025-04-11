.class public Lorg/spongycastle/est/CSRRequestResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attributesResponse:Lorg/spongycastle/est/CSRAttributesResponse;

.field private final source:Lorg/spongycastle/est/Source;


# direct methods
.method public constructor <init>(Lorg/spongycastle/est/CSRAttributesResponse;Lorg/spongycastle/est/Source;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/est/CSRRequestResponse;->attributesResponse:Lorg/spongycastle/est/CSRAttributesResponse;

    iput-object p2, p0, Lorg/spongycastle/est/CSRRequestResponse;->source:Lorg/spongycastle/est/Source;

    return-void
.end method


# virtual methods
.method public getAttributesResponse()Lorg/spongycastle/est/CSRAttributesResponse;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/est/CSRRequestResponse;->attributesResponse:Lorg/spongycastle/est/CSRAttributesResponse;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Response has no CSRAttributesResponse."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSession()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CSRRequestResponse;->source:Lorg/spongycastle/est/Source;

    invoke-interface {p0}, Lorg/spongycastle/est/Source;->getSession()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lorg/spongycastle/est/Source;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CSRRequestResponse;->source:Lorg/spongycastle/est/Source;

    return-object p0
.end method

.method public hasAttributesResponse()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/CSRRequestResponse;->attributesResponse:Lorg/spongycastle/est/CSRAttributesResponse;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
