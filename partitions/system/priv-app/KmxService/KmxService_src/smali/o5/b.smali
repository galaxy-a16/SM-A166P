.class public final Lo5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lo5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf9/b;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lf9/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lo5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/b;->a:Lo5/a;

    return-void
.end method
