.class public final Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lq2/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/s0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ld/s0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lq2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/b;->a:Lq2/e;

    return-void
.end method
