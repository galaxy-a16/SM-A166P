.class public Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final SHA512:Ljava/lang/String; = "SHA512"

.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"


# instance fields
.field private final height:I

.field private final layers:I

.field private final treeDigest:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    iput p2, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    return p0
.end method

.method public getLayers()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    return p0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-object p0
.end method
