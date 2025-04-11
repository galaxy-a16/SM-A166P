.class public final Lkotlinx/serialization/internal/g0;
.super Lkotlinx/serialization/internal/u0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/descriptors/g;I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "valueDesc"

    const-string v2, "keyDesc"

    if-eq p3, v0, :cond_0

    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "kotlin.collections.HashMap"

    invoke-direct {p0, p3, p1, p2}, Lkotlinx/serialization/internal/u0;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/descriptors/g;)V

    return-void

    :cond_0
    invoke-static {p1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "kotlin.collections.LinkedHashMap"

    invoke-direct {p0, p3, p1, p2}, Lkotlinx/serialization/internal/u0;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
