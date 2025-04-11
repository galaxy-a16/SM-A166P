.class public final Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lq2/f;

.field public final b:Ljava/util/List;

.field public final c:Lq2/b;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp1/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lp1/i;-><init>(I)V

    iget-object v0, v0, Lp1/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lq2/f;Ljava/util/List;Lq2/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->a:Lq2/f;

    iput-object p2, p0, Lq2/a;->b:Ljava/util/List;

    iput-object p3, p0, Lq2/a;->c:Lq2/b;

    iput-object p4, p0, Lq2/a;->d:Ljava/lang/String;

    return-void
.end method
