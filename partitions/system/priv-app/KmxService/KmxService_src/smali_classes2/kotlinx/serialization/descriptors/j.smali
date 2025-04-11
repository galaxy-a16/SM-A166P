.class public final Lkotlinx/serialization/descriptors/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlinx/serialization/descriptors/g;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/descriptors/g;I)V
    .locals 0

    iput p2, p0, Lkotlinx/serialization/descriptors/j;->a:I

    iput-object p1, p0, Lkotlinx/serialization/descriptors/j;->b:Lkotlinx/serialization/descriptors/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lkotlinx/serialization/descriptors/j;->a:I

    iget-object p0, p0, Lkotlinx/serialization/descriptors/j;->b:Lkotlinx/serialization/descriptors/g;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlinx/serialization/descriptors/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/descriptors/i;-><init>(Lkotlinx/serialization/descriptors/g;I)V

    return-object v0

    :goto_0
    new-instance v0, Lkotlinx/serialization/descriptors/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/descriptors/i;-><init>(Lkotlinx/serialization/descriptors/g;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
