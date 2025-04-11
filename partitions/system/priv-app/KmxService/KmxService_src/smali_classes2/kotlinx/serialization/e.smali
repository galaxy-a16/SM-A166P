.class public final Lkotlinx/serialization/e;
.super Lkotlinx/serialization/internal/b;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/c;

.field public final b:Lkotlin/collections/EmptyList;

.field public final c:Lkotlin/f;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/j;)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/internal/b;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lkotlinx/serialization/e;->b:Lkotlin/collections/EmptyList;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;

    invoke-direct {v0, p0}, Lkotlinx/serialization/PolymorphicSerializer$descriptor$2;-><init>(Lkotlinx/serialization/e;)V

    invoke-static {p1, v0}, Lkotlin/h;->c(Lkotlin/LazyThreadSafetyMode;Lvb/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/e;->c:Lkotlin/f;

    return-void
.end method


# virtual methods
.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/e;->c:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/g;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlinx.serialization.PolymorphicSerializer(baseClass: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/e;->a:Lkotlin/reflect/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
