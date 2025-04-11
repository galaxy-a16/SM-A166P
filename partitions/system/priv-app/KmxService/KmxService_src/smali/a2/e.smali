.class public abstract La2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La2/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/c;

    new-instance v0, La2/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La2/d;-><init>(I)V

    sput-object v0, La2/e;->a:La2/d;

    return-void
.end method
