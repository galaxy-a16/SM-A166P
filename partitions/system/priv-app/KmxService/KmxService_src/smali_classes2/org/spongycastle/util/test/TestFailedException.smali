.class public Lorg/spongycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private _result:Lorg/spongycastle/util/test/TestResult;


# direct methods
.method public constructor <init>(Lorg/spongycastle/util/test/TestResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/util/test/TestFailedException;->_result:Lorg/spongycastle/util/test/TestResult;

    return-void
.end method


# virtual methods
.method public getResult()Lorg/spongycastle/util/test/TestResult;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/util/test/TestFailedException;->_result:Lorg/spongycastle/util/test/TestResult;

    return-object p0
.end method
