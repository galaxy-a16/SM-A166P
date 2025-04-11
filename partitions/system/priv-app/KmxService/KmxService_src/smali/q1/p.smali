.class public final Lq1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq1/p;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/p;

    invoke-direct {v0}, Lq1/p;-><init>()V

    sput-object v0, Lq1/p;->a:Lq1/p;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lq1/p;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
