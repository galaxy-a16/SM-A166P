.class public Lorg/bouncycastle/cms/PasswordRecipientId;
.super Lorg/bouncycastle/cms/RecipientId;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientId;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/bouncycastle/cms/PasswordRecipientId;

    invoke-direct {p0}, Lorg/bouncycastle/cms/PasswordRecipientId;-><init>()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lorg/bouncycastle/cms/PasswordRecipientId;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lorg/bouncycastle/cms/PasswordRecipientInformation;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
