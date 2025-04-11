.class public final Lw5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lw5/g;


# instance fields
.field public final a:Lv6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw5/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw5/g;-><init>(Lv6/c;)V

    sput-object v0, Lw5/g;->b:Lw5/g;

    return-void
.end method

.method public constructor <init>(Lv6/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/g;->a:Lv6/c;

    return-void
.end method
