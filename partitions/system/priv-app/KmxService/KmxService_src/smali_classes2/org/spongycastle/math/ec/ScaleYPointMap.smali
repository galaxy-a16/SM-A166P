.class public Lorg/spongycastle/math/ec/ScaleYPointMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ScaleYPointMap;->scale:Lorg/spongycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ScaleYPointMap;->scale:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, p0}, Lorg/spongycastle/math/ec/ECPoint;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
