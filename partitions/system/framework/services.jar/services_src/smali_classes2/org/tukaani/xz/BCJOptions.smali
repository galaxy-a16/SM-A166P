.class public abstract Lorg/tukaani/xz/BCJOptions;
.super Lorg/tukaani/xz/FilterOptions;
.source "BCJOptions.java"


# instance fields
.field public final alignment:I

.field public startOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/tukaani/xz/BCJOptions;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    iput p1, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
