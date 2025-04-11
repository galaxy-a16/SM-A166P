.class public final Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public final e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->UNKNOWN_EVENT:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo5/a;->a:J

    iput-object p3, p0, Lo5/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lo5/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lo5/a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    iput-object p6, p0, Lo5/a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    iput-object p7, p0, Lo5/a;->f:Ljava/lang/String;

    iput-object p8, p0, Lo5/a;->g:Ljava/lang/String;

    iput p9, p0, Lo5/a;->h:I

    iput-object p10, p0, Lo5/a;->i:Ljava/lang/String;

    iput-object p11, p0, Lo5/a;->j:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    iput-object p12, p0, Lo5/a;->k:Ljava/lang/String;

    iput-object p13, p0, Lo5/a;->l:Ljava/lang/String;

    return-void
.end method
