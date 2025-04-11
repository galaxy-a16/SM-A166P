.class public abstract Lec/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lec/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lec/i;

    invoke-direct {v0}, Lec/i;-><init>()V

    sput-object v0, Lec/j;->a:Lec/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lec/t;Lec/e0;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "settings"

    invoke-static {p2, p0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Lec/z;)V
.end method
