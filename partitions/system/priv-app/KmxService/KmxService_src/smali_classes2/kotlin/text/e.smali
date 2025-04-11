.class public final Lkotlin/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lvb/c;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILvb/c;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lkotlin/text/e;->b:I

    iput p3, p0, Lkotlin/text/e;->c:I

    iput-object p4, p0, Lkotlin/text/e;->d:Lvb/c;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/text/d;

    invoke-direct {v0, p0}, Lkotlin/text/d;-><init>(Lkotlin/text/e;)V

    return-object v0
.end method
