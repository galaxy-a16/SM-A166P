.class public Lorg/spongycastle/openpgp/PGPRuntimeOperationException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
