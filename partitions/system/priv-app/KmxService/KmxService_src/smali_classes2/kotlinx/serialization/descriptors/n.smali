.class public abstract Lkotlinx/serialization/descriptors/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/n;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/j;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li4/f;->g(Ljava/lang/Object;)V

    return-object p0
.end method
