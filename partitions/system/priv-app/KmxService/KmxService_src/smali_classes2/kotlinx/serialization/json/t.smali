.class public final Lkotlinx/serialization/json/t;
.super Lkotlinx/serialization/json/a0;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/t;

.field public static final synthetic a:Lkotlin/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/t;

    invoke-direct {v0}, Lkotlinx/serialization/json/t;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/t;->INSTANCE:Lkotlinx/serialization/json/t;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;->INSTANCE:Lkotlinx/serialization/json/JsonNull$$cachedSerializer$delegate$1;

    invoke-static {v0, v1}, Lkotlin/h;->c(Lkotlin/LazyThreadSafetyMode;Lvb/a;)Lkotlin/f;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/t;->a:Lkotlin/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "null"

    return-object p0
.end method

.method public final serializer()Lkotlinx/serialization/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    sget-object p0, Lkotlinx/serialization/json/t;->a:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/c;

    return-object p0
.end method
