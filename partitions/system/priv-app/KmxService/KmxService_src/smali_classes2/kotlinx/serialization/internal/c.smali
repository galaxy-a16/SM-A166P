.class public final Lkotlinx/serialization/internal/c;
.super Lkotlinx/serialization/internal/o0;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/g;I)V
    .locals 2

    iput p2, p0, Lkotlinx/serialization/internal/c;->c:I

    const/4 v0, 0x1

    const-string v1, "elementDesc"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/o0;-><init>(Lkotlinx/serialization/descriptors/g;)V

    return-void

    :cond_0
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/o0;-><init>(Lkotlinx/serialization/descriptors/g;)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/o0;-><init>(Lkotlinx/serialization/descriptors/g;)V

    return-void

    :cond_2
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/o0;-><init>(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/c;->c:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "kotlin.collections.LinkedHashSet"

    return-object p0

    :pswitch_0
    const-string p0, "kotlin.collections.HashSet"

    return-object p0

    :pswitch_1
    const-string p0, "kotlin.collections.ArrayList"

    return-object p0

    :pswitch_2
    const-string p0, "kotlin.Array"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
