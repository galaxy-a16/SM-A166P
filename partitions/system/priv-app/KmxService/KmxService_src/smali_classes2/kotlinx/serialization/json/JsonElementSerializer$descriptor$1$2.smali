.class final Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->invoke(Lkotlinx/serialization/descriptors/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;->invoke()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/serialization/descriptors/g;
    .locals 0

    .line 2
    sget-object p0, Lkotlinx/serialization/json/u;->b:Lkotlinx/serialization/descriptors/h;

    return-object p0
.end method
