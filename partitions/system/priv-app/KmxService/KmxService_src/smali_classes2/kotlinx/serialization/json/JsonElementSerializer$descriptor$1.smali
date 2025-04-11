.class final Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->invoke(Lkotlinx/serialization/descriptors/a;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/a;)V
    .locals 1

    const-string p0, "$this$buildSerialDescriptor"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$1;

    .line 2
    new-instance v0, Lkotlinx/serialization/json/n;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/n;-><init>(Lvb/a;)V

    const-string p0, "JsonPrimitive"

    .line 3
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$2;

    .line 4
    new-instance v0, Lkotlinx/serialization/json/n;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/n;-><init>(Lvb/a;)V

    const-string p0, "JsonNull"

    .line 5
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$3;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$3;

    .line 6
    new-instance v0, Lkotlinx/serialization/json/n;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/n;-><init>(Lvb/a;)V

    const-string p0, "JsonLiteral"

    .line 7
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$4;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$4;

    .line 8
    new-instance v0, Lkotlinx/serialization/json/n;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/n;-><init>(Lvb/a;)V

    const-string p0, "JsonObject"

    .line 9
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$5;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1$5;

    .line 10
    new-instance v0, Lkotlinx/serialization/json/n;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/n;-><init>(Lvb/a;)V

    const-string p0, "JsonArray"

    .line 11
    invoke-static {p1, p0, v0}, Lkotlinx/serialization/descriptors/a;->a(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
