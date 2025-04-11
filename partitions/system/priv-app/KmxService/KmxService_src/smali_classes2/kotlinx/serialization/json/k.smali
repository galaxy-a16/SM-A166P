.class public final Lkotlinx/serialization/json/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c;"
        }
    .end annotation

    sget-object p0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    return-object p0
.end method
