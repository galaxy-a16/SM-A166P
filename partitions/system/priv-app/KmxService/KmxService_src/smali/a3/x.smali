.class public La3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:La3/x;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, La3/x;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, La3/x;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    sput-object v0, La3/x;->d:La3/x;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La3/x;->a:Z

    iput-object p2, p0, La3/x;->b:Ljava/lang/String;

    iput-object p3, p0, La3/x;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La3/x;->b:Ljava/lang/String;

    return-object p0
.end method
