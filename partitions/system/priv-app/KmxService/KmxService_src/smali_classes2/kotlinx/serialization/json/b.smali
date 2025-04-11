.class public abstract Lkotlinx/serialization/json/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lkotlinx/serialization/json/a;


# instance fields
.field public final a:Lkotlinx/serialization/json/i;

.field public final b:Lkotlinx/serialization/modules/b;

.field public final c:Landroidx/room/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/a;

    invoke-direct {v0}, Lkotlinx/serialization/json/a;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/b;->d:Lkotlinx/serialization/json/a;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/i;Lkotlinx/serialization/modules/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/b;->a:Lkotlinx/serialization/json/i;

    iput-object p2, p0, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    new-instance p1, Landroidx/room/z;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/room/z;-><init>(I)V

    iput-object p1, p0, Lkotlinx/serialization/json/b;->c:Landroidx/room/z;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "string"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/v;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/v;-><init>(Ljava/lang/String;)V

    new-instance p2, Lkotlinx/serialization/json/internal/r;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/r;-><init>(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/v;Lkotlinx/serialization/descriptors/g;Ll6/l;)V

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/r;->x(Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/v;->g()B

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected EOF after parsing, but had "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Lkotlinx/serialization/json/internal/v;->a:I

    add-int/lit8 p1, p1, -0x1

    iget-object p2, v0, Lkotlinx/serialization/json/internal/v;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lkotlinx/serialization/json/internal/v;->p(Lkotlinx/serialization/json/internal/v;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method
