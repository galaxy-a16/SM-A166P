.class final Lkotlin/random/PlatformRandom;
.super Lkotlin/random/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final Companion:Lkotlin/random/d;

.field private static final serialVersionUID:J


# instance fields
.field private final impl:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/random/d;

    invoke-direct {v0}, Lkotlin/random/d;-><init>()V

    sput-object v0, Lkotlin/random/PlatformRandom;->Companion:Lkotlin/random/d;

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1

    const-string v0, "impl"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/random/a;-><init>()V

    iput-object p1, p0, Lkotlin/random/PlatformRandom;->impl:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public getImpl()Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lkotlin/random/PlatformRandom;->impl:Ljava/util/Random;

    return-object p0
.end method
