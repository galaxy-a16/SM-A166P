.class public Lorg/tukaani/xz/X86Options;
.super Lorg/tukaani/xz/BCJOptions;
.source "X86Options.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lorg/tukaani/xz/BCJOptions;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 2

    .line 31
    new-instance p2, Lorg/tukaani/xz/SimpleInputStream;

    new-instance v0, Lorg/tukaani/xz/simple/X86;

    const/4 v1, 0x0

    iget p0, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    invoke-direct {v0, v1, p0}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    invoke-direct {p2, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object p2
.end method
