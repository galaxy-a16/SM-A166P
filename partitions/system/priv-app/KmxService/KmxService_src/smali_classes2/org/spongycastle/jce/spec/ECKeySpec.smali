.class public Lorg/spongycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/spongycastle/jce/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECKeySpec;->spec:Lorg/spongycastle/jce/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jce/spec/ECKeySpec;->spec:Lorg/spongycastle/jce/spec/ECParameterSpec;

    return-object p0
.end method
