.class public Lorg/spongycastle/tsp/cms/ImprintDigestInvalidException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private token:Lorg/spongycastle/tsp/TimeStampToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/tsp/TimeStampToken;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/spongycastle/tsp/cms/ImprintDigestInvalidException;->token:Lorg/spongycastle/tsp/TimeStampToken;

    return-void
.end method


# virtual methods
.method public getTimeStampToken()Lorg/spongycastle/tsp/TimeStampToken;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/tsp/cms/ImprintDigestInvalidException;->token:Lorg/spongycastle/tsp/TimeStampToken;

    return-object p0
.end method
