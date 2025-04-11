.class public final Lf6/a;
.super Lf6/j;
.source "SourceFile"


# static fields
.field public static final e:Lf6/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf6/a;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lf6/a;-><init>([B)V

    sput-object v0, Lf6/a;->e:Lf6/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf6/j;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf6/j;-><init>([B)V

    return-void
.end method
