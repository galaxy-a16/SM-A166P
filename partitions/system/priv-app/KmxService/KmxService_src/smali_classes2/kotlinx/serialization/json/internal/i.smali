.class public final Lkotlinx/serialization/json/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/serialization/internal/z;

.field public b:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/g;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/internal/z;

    new-instance v1, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/internal/JsonElementMarker$origin$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lkotlinx/serialization/internal/z;-><init>(Lkotlinx/serialization/descriptors/g;Lvb/c;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/i;->a:Lkotlinx/serialization/internal/z;

    return-void
.end method
